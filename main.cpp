#include "windows.h"
#include <tchar.h>

// Global Variables

// The main window class name.
static TCHAR szWindowClass[] = _T("DesktopApp");

// The string that appears in the applications title bar.
static TCHAR szTitle[] = _T("Windows Desktop Guided Tour Application");

HINSTANCE hInst;

// Forward declarations of functions included in this code module:
LRESULT CALLBACK WndProc(HWND, UINT, WPARAM, LPARAM);

int CALLBACK WinMain(
        _In_ HINSTANCE hInstance,
        _In_opt_ HINSTANCE hPrevInstance,
        _In_ LPSTR lpCmdLine,
        _In_ int nCmdShow){
    WNDCLASSEX wCex;

    wCex.cbSize = sizeof(WNDCLASSEX);
    wCex.style = CS_HREDRAW | CS_VREDRAW;
    wCex.lpfnWndProc = WndProc;
    wCex.cbClsExtra = 0;
    wCex.cbWndExtra = 0;
    wCex.hInstance = hInstance;
    wCex.hIcon = LoadIcon(hInstance, IDI_APPLICATION);
    wCex.hCursor = LoadCursor(nullptr, IDC_ARROW);
    wCex.hbrBackground = (HBRUSH)(COLOR_WINDOW + 1);
    wCex.lpszMenuName = nullptr;
    wCex.lpszClassName = szWindowClass;
    wCex.hIconSm = LoadIcon(wCex.hInstance, IDI_APPLICATION);

    if (!RegisterClassEx(&wCex))
    {
        MessageBox(nullptr,
                   _T("Call to RegisterClassEx failed!"),
                   _T("Windows Desktop Guided Tour"),
                   NULL);
        return 1;
    }

    static TCHAR szWindowClass[] = _T("DesktopApp");
    static TCHAR szTitle[] = _T("Windows Desktop Guided Tour Application");

    // The parameters to CreateWindow explained:
    // szWindowClass: the name of the application
    // szTitle: the text that appears in the title bar
    // WS_OVERLAPPEDWINDOW: the type of window to create
    // CW_USEDEFAULT, CW_USEDEFAULT: initial position (x, y)
    // 500, 100: initial size (width, length)
    // NULL: the parent of this window
    // NULL: this application does not have a menu bar
    // hInstance: the first parameter from WinMain
    // NULL: not used in this application
    HWND hWnd = CreateWindow(
            szWindowClass,
            szTitle,
            WS_OVERLAPPEDWINDOW,
            CW_USEDEFAULT, CW_USEDEFAULT,
            500, 100,
            nullptr,
            nullptr,
            hInstance,
            nullptr
    );
    if (!hWnd)
    {
        MessageBox(nullptr,
                   _T("Call To CreateWindow Failed"),
                   _T("Windows Desktop Guided Tour"),
                   NULL);
        return 1;
    }
    // The parameters to ShowWindow explained:
    // hWnd: The Value returned from CreateWindow
    // nCmdShow: The fourth parameter from WinMain
    ShowWindow(hWnd,
               nCmdShow);
    UpdateWindow(hWnd);
    MSG msg;
    while (GetMessage(&msg, nullptr, 0, 0))
    {
        TranslateMessage(&msg);
        DispatchMessage(&msg);
    }
    return (int) msg.wParam;

}

//  FUNCTION:  WndProc(HWND, UINT, WPARAM, LPARAM
//  PURPOSE:   Processes messages from the MainWindow
//
//  WM_PAINT   - Paint the main window
//  WM_DESTROY - Post a message quit and return

LRESULT CALLBACK WndProc(
        _In_ HWND hWnd,
        _In_ UINT message,
        _In_ WPARAM wParam,
        _In_ LPARAM lParam) {

    PAINTSTRUCT ps;
    HDC hdc;
    TCHAR greeting[] = _T("Hello, Windows Desktop!");

    switch (message)
    {
        case WM_PAINT:
            hdc = BeginPaint(hWnd, &ps);

            // Here your application is laid out.
            // For more information, we just print out "Hello, Windows Desktop!"
            // In the top left corner
            TextOut(hdc,
                    5, 5,
                    greeting, _tcslen(greeting));
            // End Application specific layout
            EndPaint(hWnd, &ps);
            break;
        case WM_DESTROY:
            PostQuitMessage(0);
            break;
        default:
            return DefWindowProc(hWnd, message, wParam, lParam);}
    return 0;
}




